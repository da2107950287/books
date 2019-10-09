// pages/bookinfo/bookinfo.js
let app = getApp();
let sever = app.globalData.hostname;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    bookinfo: [],
    packup: "nr",
    flag: true,
    content:"展开",
    img: "/image/btn_arrow.png"
  },
  packUp: function() {
    if (this.data.flag) {
      this.setData({
        packup: "nr1",
        flag: false,
        content:"收起",
        img:"/image/sq.png"
      })
    } else {
      this.setData({
        packup: "nr",
        flag: true,
        content: "展开",
        img: "/image/btn_arrow.png"
      })
    }
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    console.log(options)
    wx.request({
      url: sever + "/booklist/getbookinfo",
      method: "get",
      data: {
        bid: options.bid
      },
      success: (res) => {
        console.log(res.data)
        this.setData({
          bookinfo: res.data
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