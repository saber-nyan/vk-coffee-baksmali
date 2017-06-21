.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;->arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$17;->arg$2:Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$buildInfoItems$560(Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;)V

    return-void
.end method
