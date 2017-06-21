.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$28;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$28;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$28;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$28;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$buildInfoItems$571()V

    return-void
.end method
