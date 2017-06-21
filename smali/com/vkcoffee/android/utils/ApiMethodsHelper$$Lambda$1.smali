.class final synthetic Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:I

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Lcom/vkcoffee/android/functions/VoidF2;

.field private final arg$4:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$1:I

    iput-object p2, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$3:Lcom/vkcoffee/android/functions/VoidF2;

    iput-object p4, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$4:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;-><init>(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget v0, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$1:I

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$3:Lcom/vkcoffee/android/functions/VoidF2;

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->arg$4:Ljava/lang/Object;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->lambda$clearHistory$720(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
