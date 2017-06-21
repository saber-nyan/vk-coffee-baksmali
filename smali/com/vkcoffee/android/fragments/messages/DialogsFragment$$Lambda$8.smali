.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF2;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/functions/VoidF2;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$8;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$8;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$confirmAndClearHistory$464(Ljava/lang/Integer;Lcom/vkcoffee/android/DialogEntry;)V

    return-void
.end method
