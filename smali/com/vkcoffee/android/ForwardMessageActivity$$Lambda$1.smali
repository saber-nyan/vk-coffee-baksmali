.class final synthetic Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ForwardMessageActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ForwardMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ForwardMessageActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ForwardMessageActivity;)Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/ForwardMessageActivity;)V

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ForwardMessageActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ForwardMessageActivity;->lambda$onCreate$298(Lcom/vkcoffee/android/DialogEntry;)V

    return-void
.end method
