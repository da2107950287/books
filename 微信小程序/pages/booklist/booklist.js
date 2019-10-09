// pages/booklist/booklist.js
let app = getApp();
let sever = app.globalData.hostname;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    navlist: [
      "电子书",
      "悦读VIP",
      "听书",
      "男生",
      "女生",
      "有声课",
      "租阅"
    ],
   
    imgUrls: [
      '/image/1.jpg',
      '/image/2.jpg',
      '/image/3.jpg',
      '/image/4.jpg'
    ],
    indicatorDots: true,
    autoplay: true,
    interval: 3000,
    duration: 1000,
    circular: true,
    arr: [],
    page: 1,
    imgmore: "/image/more.png",
    flag: true,
    display:"none"
  },
  seem: function(options) {
    wx.navigateTo({
      url: '../seemore/seemore',
    })
  },
  search: function() {
    wx.navigateTo({
      url: '../search/search',
    })
  },
  more: function() {
    if (this.data.flag) {
      this.setData({
        imgmore: "/image/mask.png",
        display:"block",
        flag: false
      })
    } else {
      this.setData({
        imgmore: "/image/more.png",
        display:"none",
        flag: true
      })
    }

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    wx.request({
      url: sever + "/booklist/",
      method: "get",
      data: {
        page: this.data.page
      },
      success: (res) => {
        this.setData({
          arr: res.data
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  }
})