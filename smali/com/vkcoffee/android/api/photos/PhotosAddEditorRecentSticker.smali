.class public Lcom/vkcoffee/android/api/photos/PhotosAddEditorRecentSticker;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PhotosAddEditorRecentSticker.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stickerId"    # I

    .prologue
    .line 7
    const-string/jumbo v0, "photos.addEditorRecentSticker"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 8
    const-string/jumbo v0, "sticker_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosAddEditorRecentSticker;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 9
    return-void
.end method
