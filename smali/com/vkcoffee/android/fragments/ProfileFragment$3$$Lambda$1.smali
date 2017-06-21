.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$3;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$3;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;->arg$2:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment$3;Landroid/view/View;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$3;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment$3;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$3$$Lambda$1;->arg$2:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$3;->lambda$onClick$541(Landroid/view/View;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
