document.addEventListener("DOMContentLoaded", () => {
  const cryptoIds = ["bitcoin", "ethereum", "dogecoin", "litecoin", "ripple"];
  const cryptoWidgets = {
    bitcoin: { id: "btcChart", priceId: "btc-price", label: "Bitcoin (BTC)" },
    ethereum: { id: "ethChart", priceId: "eth-price", label: "Ethereum (ETH)" },
    dogecoin: {
      id: "dogeChart",
      priceId: "doge-price",
      label: "Dogecoin (DOGE)",
    },
    litecoin: { id: "ltcChart", priceId: "ltc-price", label: "Litecoin (LTC)" },
    ripple: { id: "xrpChart", priceId: "xrp-price", label: "XRP" },
  };

  const charts = {};

  // Hàm lấy dữ liệu lịch sử giá từ API CoinGecko
  async function fetchCryptoHistory(cryptoId) {
    const apiUrl = `https://api.coingecko.com/api/v3/coins/${cryptoId}/market_chart?vs_currency=usd&days=3&interval=hourly`;
    try {
      const response = await fetch(apiUrl);
      const data = await response.json();
      return data.prices; // Trả về mảng giá theo thời gian
    } catch (error) {
      console.error(`Lỗi khi lấy dữ liệu cho ${cryptoId}:`, error);
      return [];
    }
  }

  // Hàm khởi tạo biểu đồ
  function createChart(ctx, label) {
    return new Chart(ctx, {
      type: "line",
      data: {
        labels: [], // Thời gian
        datasets: [
          {
            label: label,
            data: [], // Giá
            borderColor: "rgba(75, 192, 192, 1)",
            backgroundColor: "rgba(75, 192, 192, 0.2)",
            borderWidth: 1,
            tension: 0.1,
          },
        ],
      },
      options: {
        responsive: true,
        scales: {
          x: { title: { display: true, text: "Thời gian" } },
          y: {
            title: { display: true, text: "Giá (USD)" },
            beginAtZero: false,
          },
        },
      },
    });
  }

  // Tạo biểu đồ và tải dữ liệu cho từng loại tiền điện tử
  Object.keys(cryptoWidgets).forEach(async (cryptoId) => {
    const ctx = document
      .getElementById(cryptoWidgets[cryptoId].id)
      .getContext("2d");
    const chart = createChart(ctx, cryptoWidgets[cryptoId].label);
    charts[cryptoId] = chart;

    // Gọi API để lấy dữ liệu lịch sử giá
    const prices = await fetchCryptoHistory(cryptoId);
    prices.forEach((price) => {
      const [timestamp, value] = price;
      const date = new Date(timestamp).toLocaleString();

      // Cập nhật dữ liệu vào biểu đồ
      chart.data.labels.push(date);
      chart.data.datasets[0].data.push(value);
    });

    chart.update();
  });

  // Hàm cập nhật giá hiện tại cho từng loại tiền điện tử
  async function updateCurrentPrices() {
    const apiUrl =
      "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,dogecoin,litecoin,ripple&vs_currencies=usd";
    try {
      const response = await fetch(apiUrl);
      const data = await response.json();

      Object.keys(cryptoWidgets).forEach((cryptoId) => {
        const price = data[cryptoId].usd;
        document.getElementById(
          cryptoWidgets[cryptoId].priceId
        ).textContent = `${price} USD`;
      });
    } catch (error) {
      console.error("Lỗi khi cập nhật giá:", error);
    }
  }

  // Gọi updateCurrentPrices lần đầu và sau đó mỗi 10 giây
  updateCurrentPrices();
  setInterval(updateCurrentPrices, 10000);
});
