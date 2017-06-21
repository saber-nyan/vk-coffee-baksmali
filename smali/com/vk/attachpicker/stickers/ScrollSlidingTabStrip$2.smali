.class Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "ScrollSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->addStickerTab(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->this$0:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

    iput p2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->this$0:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

    iget v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->selectTab(I)V

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->this$0:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->access$000(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;)Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    .line 122
    return-void
.end method
