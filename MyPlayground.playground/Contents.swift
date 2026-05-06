struct Article {
    let id: String
    let title: String
    let author: String
}

struct Video {
    let id: String
    let title: String
    let duration: Int
}

protocol Previewable {
    var previewTitle: String { get }
    func generatePreview()
}

extension Previewable {
    func generatePreview() {
        print("正在生成预览:\(previewTitle)")
    }
}

extension Article: Previewable {
    var previewTitle: String {
        return "文章:\(title) - 作者:\(author)"
    }
}

extension Video: Previewable {
    var previewTitle: String {
        return "视频:\(title) (\(duration)s)"
    }

    func generatePreview() {
        print("视频正在加载:\(previewTitle)")
    }
}

let myArticle = Article(id: "1", title: "AAAA", author: "Jack")
myArticle.generatePreview()
let myVideo = Video(id: "2", title: "BBBB", duration: 120)
myVideo.generatePreview()

