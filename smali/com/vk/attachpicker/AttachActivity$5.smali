.class Lcom/vk/attachpicker/AttachActivity$5;
.super Ljava/lang/Object;
.source "AttachActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/AttachActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 281
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/AttachActivity;->access$002(Lcom/vk/attachpicker/AttachActivity;I)I

    .line 259
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0, p2}, Lcom/vk/attachpicker/AttachActivity;->access$102(Lcom/vk/attachpicker/AttachActivity;F)F

    .line 261
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$200(Lcom/vk/attachpicker/AttachActivity;)V

    .line 262
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$300(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 268
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$400(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/SelectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ContentViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$600(Lcom/vk/attachpicker/AttachActivity;)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$800(Lcom/vk/attachpicker/AttachActivity;)V

    .line 276
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$200(Lcom/vk/attachpicker/AttachActivity;)V

    .line 277
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$5;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$700(Lcom/vk/attachpicker/AttachActivity;)V

    goto :goto_0
.end method
