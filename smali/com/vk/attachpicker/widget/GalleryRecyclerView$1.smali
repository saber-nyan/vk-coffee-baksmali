.class Lcom/vk/attachpicker/widget/GalleryRecyclerView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GalleryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/GalleryRecyclerView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/GalleryRecyclerView;

.field final synthetic val$spanCount:I


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/GalleryRecyclerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/GalleryRecyclerView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vk/attachpicker/widget/GalleryRecyclerView$1;->this$0:Lcom/vk/attachpicker/widget/GalleryRecyclerView;

    iput p2, p0, Lcom/vk/attachpicker/widget/GalleryRecyclerView$1;->val$spanCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/vk/attachpicker/widget/GalleryRecyclerView$1;->this$0:Lcom/vk/attachpicker/widget/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .line 42
    .local v0, "adapter":Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->isCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->isEmptyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 43
    iget v1, p0, Lcom/vk/attachpicker/widget/GalleryRecyclerView$1;->val$spanCount:I

    .line 45
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
