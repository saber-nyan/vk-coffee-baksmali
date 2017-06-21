.class final synthetic Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arg$1:Landroid/widget/AdapterView$OnItemClickListener;

.field private final arg$2:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

.field private final arg$3:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$1:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$2:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$3:Landroid/app/Dialog;

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/AdapterView$OnItemClickListener;Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;-><init>(Landroid/widget/AdapterView$OnItemClickListener;Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;)V

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$1:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$2:Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ListDialog$$Lambda$2;->arg$3:Landroid/app/Dialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/vkcoffee/android/ui/ListDialog;->lambda$show$707(Landroid/widget/AdapterView$OnItemClickListener;Lcom/vkcoffee/android/ui/animation/RevealLinearLayout;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
