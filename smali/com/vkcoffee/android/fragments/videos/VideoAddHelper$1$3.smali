.class Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;
.super Landroid/widget/BaseAdapter;
.source "VideoAddHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->success(Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "v":Landroid/view/View;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$targetID:I

    if-ne v1, v2, :cond_0

    .line 140
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 133
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$3;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$targetID:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
