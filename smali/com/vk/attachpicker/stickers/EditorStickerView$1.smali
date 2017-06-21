.class Lcom/vk/attachpicker/stickers/EditorStickerView$1;
.super Landroid/content/BroadcastReceiver;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/stickers/EditorStickerView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$1;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$1;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$000(Lcom/vk/attachpicker/stickers/EditorStickerView;)V

    .line 44
    return-void
.end method
