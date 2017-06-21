.class final synthetic Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$3:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Ljava/lang/String;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter$$Lambda$1;->arg$3:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->lambda$fillGamePage$370(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
