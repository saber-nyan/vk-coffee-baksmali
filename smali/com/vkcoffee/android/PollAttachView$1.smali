.class Lcom/vkcoffee/android/PollAttachView$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PollAttachView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PollAttachView;->unvote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PollAttachView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PollAttachView;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    .line 117
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 8

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "var1":I
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v3

    .line 121
    .local v3, "var4":[Lcom/vkcoffee/android/api/PollOption;
    array-length v2, v3

    .line 124
    .local v2, "var3":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 128
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v5

    array-length v5, v5

    if-lt v1, v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vkcoffee/android/PollAttachView;->access$2(Lcom/vkcoffee/android/PollAttachView;I)V

    .line 138
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$3(Lcom/vkcoffee/android/PollAttachView;)V

    .line 139
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$4(Lcom/vkcoffee/android/PollAttachView;)V

    .line 140
    return-void

    .line 125
    :cond_0
    aget-object v5, v3, v1

    iget v5, v5, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    add-int/2addr v0, v5

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v5

    aget-object v5, v5, v1

    iget v5, v5, Lcom/vkcoffee/android/api/PollOption;->id:I

    iget-object v6, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v6}, Lcom/vkcoffee/android/PollAttachView;->access$1(Lcom/vkcoffee/android/PollAttachView;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 130
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v5

    aget-object v4, v5, v1

    .line 131
    .local v4, "var5":Lcom/vkcoffee/android/api/PollOption;
    iget v5, v4, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    .line 134
    .end local v4    # "var5":Lcom/vkcoffee/android/api/PollOption;
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v5}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/vkcoffee/android/PollAttachView$1;->this$0:Lcom/vkcoffee/android/PollAttachView;

    invoke-static {v6}, Lcom/vkcoffee/android/PollAttachView;->access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;

    move-result-object v6

    aget-object v6, v6, v1

    iget v6, v6, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/vkcoffee/android/api/PollOption;->percent:F

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
