.class Lcom/vkcoffee/android/ui/WriteBar$10;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->openAttachMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$10;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/WriteBar$10;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$10;->val$dlg:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 456
    const/4 v0, 0x0

    return v0
.end method
