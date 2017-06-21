.class final synthetic Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;->lambda$onClick$331(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
