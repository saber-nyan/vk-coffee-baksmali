.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$16;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lambda$onOptionsItemSelected$424(Ljava/lang/Integer;)V

    return-void
.end method
