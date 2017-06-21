.class Lcom/vk/attachpicker/AttachActivity$3;
.super Ljava/lang/Object;
.source "AttachActivity.java"

# interfaces
.implements Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/AttachActivity;->initViews()V
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
    .line 222
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$3;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public position()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$3;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$000(Lcom/vk/attachpicker/AttachActivity;)I

    move-result v0

    return v0
.end method

.method public positionOffset()F
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$3;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$100(Lcom/vk/attachpicker/AttachActivity;)F

    move-result v0

    return v0
.end method
