.class Lcom/vkcoffee/android/stickers/KeyboardPopup$4;
.super Ljava/lang/Object;
.source "KeyboardPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$4;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$4;->this$0:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->access$100(Lcom/vkcoffee/android/stickers/KeyboardPopup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    return-void
.end method
