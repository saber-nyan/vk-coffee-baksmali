.class final synthetic Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/activities/RestoreActivity$3;

.field private final arg$2:I

.field private final arg$3:Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/activities/RestoreActivity$3;ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/activities/RestoreActivity$3;

    iput p2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$2:I

    iput-object p3, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$3:Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity$3;ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/activities/RestoreActivity$3;ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/activities/RestoreActivity$3;

    iget v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity$3$$Lambda$1;->arg$3:Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity$3;->lambda$fail$181(ILcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    return-void
.end method
