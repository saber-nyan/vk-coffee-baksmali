.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$21;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$21;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$21;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$21;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$loadFwdUsers$435(Ljava/util/ArrayList;)V

    return-void
.end method
