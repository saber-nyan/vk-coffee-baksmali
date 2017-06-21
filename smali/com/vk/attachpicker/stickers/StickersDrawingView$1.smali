.class Lcom/vk/attachpicker/stickers/StickersDrawingView$1;
.super Ljava/lang/Object;
.source "StickersDrawingView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/StickersDrawingView;->addStickerView(Lcom/vk/attachpicker/stickers/Sticker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

.field final synthetic val$sticker:Lcom/vk/attachpicker/stickers/Sticker;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/StickersDrawingView;Lcom/vk/attachpicker/stickers/Sticker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    iput-object p2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 82
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 83
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/stickers/Sticker;->setCanvasDimension(FF)V

    .line 84
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/Sticker;->getOriginalWidth()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .line 85
    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v3}, Lcom/vk/attachpicker/stickers/Sticker;->getOriginalHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/stickers/Sticker;->translateBy(FF)V

    .line 87
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->access$000(Lcom/vk/attachpicker/stickers/StickersDrawingView;)Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->val$sticker:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->addSticker(Lcom/vk/attachpicker/stickers/Sticker;)V

    .line 88
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;->this$0:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 89
    const/4 v0, 0x0

    return v0
.end method
