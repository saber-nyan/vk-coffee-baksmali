.class Lcom/vk/attachpicker/AttachActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AttachActivity.java"


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
    .line 242
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$4;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$4;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$200(Lcom/vk/attachpicker/AttachActivity;)V

    .line 246
    return-void
.end method
