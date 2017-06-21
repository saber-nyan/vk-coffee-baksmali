.class final synthetic Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/activities/RestoreActivity;

.field private final arg$2:Ljava/util/HashMap;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/util/HashMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$1:Lcom/vkcoffee/android/activities/RestoreActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$2:Ljava/util/HashMap;

    iput p3, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/util/HashMap;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;-><init>(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/util/HashMap;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$1:Lcom/vkcoffee/android/activities/RestoreActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$2:Ljava/util/HashMap;

    iget v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->arg$3:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->lambda$null$179(Ljava/util/HashMap;I)V

    return-void
.end method
