.class public Lcom/vkcoffee/android/api/polls/PollsDeleteVote;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PollsDeleteVote.java"


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "pollID"    # I
    .param p3, "optID"    # I
    .param p4, "board"    # Z

    .prologue
    .line 8
    const-string/jumbo v0, "polls.deleteVote"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "poll_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "answer_id"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    if-eqz p4, :cond_0

    .line 11
    const-string/jumbo v0, "board"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    :cond_0
    return-void
.end method
