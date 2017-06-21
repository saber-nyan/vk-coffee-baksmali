.class Lcom/vkcoffee/android/stickers/KeyboardPopup$5;
.super Ljava/lang/Object;
.source "KeyboardPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

.field final synthetic val$aloc:[I

.field final synthetic val$bd:Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;

.field final synthetic val$eloc:[I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;[ILcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    iput-object p2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$eloc:[I

    iput-object p3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$bd:Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;

    iput-object p4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$aloc:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->access$200(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->access$200(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$eloc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$bd:Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$aloc:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->val$eloc:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$5;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->access$300(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->setArrowX(I)V

    .line 188
    const/4 v0, 0x1

    return v0
.end method
