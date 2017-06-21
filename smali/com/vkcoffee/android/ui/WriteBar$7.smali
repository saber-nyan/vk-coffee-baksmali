.class Lcom/vkcoffee/android/ui/WriteBar$7;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Lcom/vkcoffee/android/stickers/StickersView$Listener;


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


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$7;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 318
    return-void
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packId"    # I
    .param p2, "stickerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "localPath"    # Ljava/lang/String;
    .param p5, "stickerReferrer"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$7;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1200(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$7;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 310
    .local v6, "editText":Landroid/widget/EditText;
    const-string/jumbo v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$7;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1200(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/stickers/StickersView$Listener;->onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v6    # "editText":Landroid/widget/EditText;
    :cond_0
    return-void
.end method
