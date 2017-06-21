.class Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PhotoSmallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHeaderHolder"
.end annotation


# instance fields
.field private final cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

.field private cameraView:Landroid/view/View;

.field private emptyView:Landroid/view/View;

.field final synthetic this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .line 146
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 140
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraView:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->emptyView:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraView:Landroid/view/View;

    const v1, 0x7f1002fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraView:Landroid/view/View;

    const v1, 0x7f1002fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method


# virtual methods
.method synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 157
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->access$100(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->access$100(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->access$000(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->this$0:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->access$000(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public update(ZZ)V
    .locals 3
    .param p1, "camera"    # Z
    .param p2, "empty"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_0
    if-eqz p2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_1
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->cameraView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
