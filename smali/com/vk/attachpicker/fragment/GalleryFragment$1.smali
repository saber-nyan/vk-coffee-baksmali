.class Lcom/vk/attachpicker/fragment/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/fragment/GalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 94
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$000(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/widget/ContextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContextProgressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 98
    .local v0, "rvTop":I
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$100(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    sub-int v1, v2, v0

    .line 99
    .local v1, "visiblePart":I
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$000(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/widget/ContextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContextProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-virtual {v4}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 100
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment$1;->this$0:Lcom/vk/attachpicker/fragment/GalleryFragment;

    invoke-static {v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->access$000(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/widget/ContextProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContextProgressView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "rvTop":I
    .end local v1    # "visiblePart":I
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method
