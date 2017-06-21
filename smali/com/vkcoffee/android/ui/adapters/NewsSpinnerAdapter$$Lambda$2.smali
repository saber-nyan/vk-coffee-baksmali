.class final synthetic Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;

.field private final arg$2:Landroid/widget/AdapterView$OnItemClickListener;

.field private final arg$3:Landroid/view/ViewGroup;

.field private final arg$4:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

.field private final arg$5:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$1:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$2:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$3:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$4:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    iput p5, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$5:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 6

    new-instance v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;-><init>(Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;I)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$1:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$2:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$3:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$4:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;

    iget v4, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$$Lambda$2;->arg$5:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->lambda$getDropDownView$505(Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$DropDownViewHolder;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
