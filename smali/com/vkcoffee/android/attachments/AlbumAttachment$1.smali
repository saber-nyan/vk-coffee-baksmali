.class Lcom/vkcoffee/android/attachments/AlbumAttachment$1;
.super Ljava/lang/Object;
.source "AlbumAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/AlbumAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/AlbumAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/AlbumAttachment;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080045

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 68
    .local v0, "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->descr:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->oid:I

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 70
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->aid:I

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 71
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$1;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/AlbumAttachment;->size:I

    iput v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 73
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;-><init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method
