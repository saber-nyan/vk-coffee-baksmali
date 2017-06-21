.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;

.field private final arg$2:Z

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;ZLjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$2:Z

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$3:Ljava/util/ArrayList;

    iput p4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$4:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;ZLjava/util/ArrayList;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;ZLjava/util/ArrayList;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$2:Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$3:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5$$Lambda$2;->arg$4:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$5;->lambda$onDialogsLoaded$462(ZLjava/util/ArrayList;I)V

    return-void
.end method
