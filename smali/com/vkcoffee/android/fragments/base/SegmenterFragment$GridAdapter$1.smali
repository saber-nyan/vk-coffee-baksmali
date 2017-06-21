.class Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SegmenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

.field final synthetic val$this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .prologue
    .line 157
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;->val$this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->access$000(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->access$100(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    .line 162
    .local v0, "imgLoader":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 166
    .end local v0    # "imgLoader":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    :cond_0
    return-void
.end method
