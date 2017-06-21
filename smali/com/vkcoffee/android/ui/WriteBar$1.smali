.class Lcom/vkcoffee/android/ui/WriteBar$1;
.super Landroid/content/BroadcastReceiver;
.source "WriteBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/WriteBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$1;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$1;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$000(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$1;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$000(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$1;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$100(Lcom/vkcoffee/android/ui/WriteBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers;->getNumUpdates()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_0
    return-void

    .line 118
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
