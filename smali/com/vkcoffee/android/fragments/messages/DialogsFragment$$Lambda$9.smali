.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/DialogEntry;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$9;-><init>(Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$9;->arg$1:Lcom/vkcoffee/android/DialogEntry;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$createShortcut$466(Lcom/vkcoffee/android/DialogEntry;)V

    return-void
.end method
