.class Lcom/vkcoffee/android/attachments/PollAttachment$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PollAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;->unvote(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

.field private final synthetic val$var1:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->val$var1:Landroid/view/ViewGroup;

    .line 193
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 9

    .prologue
    .line 195
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    const/4 v7, -0x1

    iput v7, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    .line 199
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    const/4 v0, 0x0

    .local v0, "var1x":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 214
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    const/4 v7, 0x0

    iput v7, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    .line 215
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->val$var1:Landroid/view/ViewGroup;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$4(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V

    .line 217
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->val$var1:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_3

    .line 224
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-static {v6}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$3(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    .line 225
    return-void

    .line 200
    .end local v0    # "var1x":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 201
    .local v2, "var3":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 199
    .local v3, "var4":Lcom/vkcoffee/android/attachments/PollAttachment;
    iget v6, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    iget v7, v2, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    goto :goto_0

    .line 206
    .end local v2    # "var3":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    .end local v3    # "var4":Lcom/vkcoffee/android/attachments/PollAttachment;
    .restart local v0    # "var1x":I
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    iget v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v7, v7, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    if-ne v6, v7, :cond_2

    .line 207
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 208
    .local v4, "var5":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    iget v6, v4, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    .line 211
    .end local v4    # "var5":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v7, v7, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    iget v7, v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    iput v7, v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->val$var1:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 219
    .local v5, "var6":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    if-eqz v6, :cond_4

    .line 220
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment$5;->this$0:Lcom/vkcoffee/android/attachments/PollAttachment;

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/vkcoffee/android/attachments/PollAttachment;->access$5(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;Z)V

    .line 217
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
