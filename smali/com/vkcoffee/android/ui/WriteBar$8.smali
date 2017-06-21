.class Lcom/vkcoffee/android/ui/WriteBar$8;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;

.field final synthetic val$location:[I

.field final synthetic val$size:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/graphics/Point;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$size:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$location:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 331
    if-ne p2, p6, :cond_1

    move/from16 v0, p8

    if-ne p4, v0, :cond_1

    if-ne p3, p7, :cond_1

    move/from16 v0, p9

    if-ne p5, v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const-string/jumbo v5, "WriteBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onLayoutChange bottom =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$1300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->hidePopup()V

    .line 337
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 338
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 339
    .local v2, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$size:Landroid/graphics/Point;

    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 341
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$location:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 343
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$location:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int v6, p5, p3

    add-int v1, v5, v6

    .line 345
    .local v1, "bottomOfView":I
    const-string/jumbo v5, "WriteBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onLayoutChange bottomOfView =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->val$size:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    const/16 v6, 0xc8

    if-le v5, v6, :cond_0

    .line 348
    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$8;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    const v6, 0x7f100433

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "text":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/ui/WriteBar$8$1;

    invoke-direct {v5, p0, v3}, Lcom/vkcoffee/android/ui/WriteBar$8$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar$8;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
