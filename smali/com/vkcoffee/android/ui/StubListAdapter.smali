.class public Lcom/vkcoffee/android/ui/StubListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StubListAdapter.java"


# static fields
.field private static instance:Lcom/vkcoffee/android/ui/StubListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/vkcoffee/android/ui/StubListAdapter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/StubListAdapter;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/StubListAdapter;->instance:Lcom/vkcoffee/android/ui/StubListAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vkcoffee/android/ui/StubListAdapter;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/ui/StubListAdapter;->instance:Lcom/vkcoffee/android/ui/StubListAdapter;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
