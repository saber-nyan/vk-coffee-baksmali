.class Lcom/vk/attachpicker/AttachActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AttachActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/AttachActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$1;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$1;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-virtual {v0}, Lcom/vk/attachpicker/AttachActivity;->finish()V

    .line 107
    return-void
.end method
