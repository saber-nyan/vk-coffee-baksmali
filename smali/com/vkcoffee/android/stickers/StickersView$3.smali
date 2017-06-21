.class Lcom/vkcoffee/android/stickers/StickersView$3;
.super Ljava/lang/Object;
.source "StickersView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/StickersView;->createBackspaceButton()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickersView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/StickersView;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersView$3;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$3;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickersView;->access$500(Lcom/vkcoffee/android/stickers/StickersView;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$3;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickersView;->access$500(Lcom/vkcoffee/android/stickers/StickersView;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkcoffee/android/stickers/StickersView$Listener;->onBackspace()V

    .line 310
    :cond_0
    return-void
.end method
