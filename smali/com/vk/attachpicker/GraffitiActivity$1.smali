.class Lcom/vk/attachpicker/GraffitiActivity$1;
.super Landroid/view/OrientationEventListener;
.source "GraffitiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/GraffitiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/GraffitiActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/GraffitiActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/GraffitiActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiActivity$1;->this$0:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity$1;->this$0:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/GraffitiActivity;->access$000(Lcom/vk/attachpicker/GraffitiActivity;I)V

    .line 79
    return-void
.end method
