.class Lcom/vk/attachpicker/widget/EditButton$1;
.super Ljava/lang/Object;
.source "EditButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/EditButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/EditButton;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/EditButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/EditButton;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 134
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$000(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/EditButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$100(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$200(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$100(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const v0, 0x7f0202b1

    .line 147
    .local v0, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$500(Lcom/vk/attachpicker/widget/EditButton;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$500(Lcom/vk/attachpicker/widget/EditButton;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$600(Lcom/vk/attachpicker/widget/EditButton;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vk/attachpicker/widget/EditButton;->access$700(Landroid/widget/ImageView;Landroid/widget/ImageView;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 152
    .local v1, "set":Landroid/animation/AnimatorSet;
    :goto_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 153
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$100(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/vk/attachpicker/widget/EditButton;->access$202(Lcom/vk/attachpicker/widget/EditButton;Z)Z

    .line 155
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$100(Lcom/vk/attachpicker/widget/EditButton;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$900(Lcom/vk/attachpicker/widget/EditButton;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$800(Lcom/vk/attachpicker/widget/EditButton;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x708

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    .end local v0    # "resId":I
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$300(Lcom/vk/attachpicker/widget/EditButton;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/vk/attachpicker/widget/EditButton;->access$400()[I

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/vk/attachpicker/widget/EditButton;->access$302(Lcom/vk/attachpicker/widget/EditButton;I)I

    .line 143
    invoke-static {}, Lcom/vk/attachpicker/widget/EditButton;->access$400()[I

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$300(Lcom/vk/attachpicker/widget/EditButton;)I

    move-result v3

    aget v0, v2, v3

    .restart local v0    # "resId":I
    goto :goto_1

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/EditButton;->access$600(Lcom/vk/attachpicker/widget/EditButton;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/EditButton$1;->this$0:Lcom/vk/attachpicker/widget/EditButton;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/EditButton;->access$500(Lcom/vk/attachpicker/widget/EditButton;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vk/attachpicker/widget/EditButton;->access$700(Landroid/widget/ImageView;Landroid/widget/ImageView;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    goto :goto_2
.end method
