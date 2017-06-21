.class final synthetic Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:I

.field private final arg$2:I

.field private final arg$3:Landroid/content/Context;

.field private final arg$4:Lcom/vkcoffee/android/functions/VoidF1;


# direct methods
.method private constructor <init>(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$1:I

    iput p2, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$2:I

    iput-object p3, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$3:Landroid/content/Context;

    iput-object p4, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$4:Lcom/vkcoffee/android/functions/VoidF1;

    return-void
.end method

.method public static lambdaFactory$(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;-><init>(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget v0, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$1:I

    iget v1, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$3:Landroid/content/Context;

    iget-object v3, p0, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->arg$4:Lcom/vkcoffee/android/functions/VoidF1;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->lambda$removeUserFromChat$721(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;Landroid/content/DialogInterface;I)V

    return-void
.end method
