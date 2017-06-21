.class final synthetic Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Landroid/widget/AdapterView$OnItemClickListener;

.field private final arg$2:Landroid/view/ViewGroup;

.field private final arg$3:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

.field private final arg$4:I


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$1:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$2:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$3:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    iput p4, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$4:I

    return-void
.end method

.method public static lambdaFactory$(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;-><init>(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$1:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$3:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    iget v3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$1;->arg$4:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->lambda$getDropDownView$504(Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;ILandroid/view/View;)V

    return-void
.end method
