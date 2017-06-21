.class Lcom/vkcoffee/android/attachments/PollAttachment$4;
.super Ljava/lang/Object;
.source "PollAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;->reloadIfNeeded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/attachments/PollAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

.field private final synthetic val$var1:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->val$var1:Landroid/view/View;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0

    .prologue
    .line 175
    .local p1, "var1x":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    return-void
.end method

.method public success(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 6
    .param p1, "var1x"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v1, p1, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v1, p1, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    iput v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v1, p1, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    iput v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->lastUpdated:I

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->val$var1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$2(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$4;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$3(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    .line 186
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$4;->success(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    return-void
.end method
