.class Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;
.super Landroid/widget/FrameLayout;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    .line 1048
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1049
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$2300(Lcom/vk/attachpicker/screen/ViewerScreen;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$FrameLayoutTouchListener;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$2300(Lcom/vk/attachpicker/screen/ViewerScreen;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
