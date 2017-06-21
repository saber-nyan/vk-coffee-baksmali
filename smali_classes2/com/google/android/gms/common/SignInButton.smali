.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/SignInButton$ColorScheme;,
        Lcom/google/android/gms/common/SignInButton$ButtonSize;
    }
.end annotation


# static fields
.field public static final COLOR_AUTO:I = 0x2

.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private mColor:I

.field private mSize:I

.field private zzafT:[Lcom/google/android/gms/common/api/Scope;

.field private zzafU:Landroid/view/View;

.field private zzafV:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafV:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->zza(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v2, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;II[Lcom/google/android/gms/common/api/Scope;)Landroid/widget/Button;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzac;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/content/res/Resources;II[Lcom/google/android/gms/common/api/Scope;)V

    return-object v0
.end method

.method private zza(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_buttonSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_colorScheme:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    sget v2, Lcom/google/android/gms/R$styleable;->SignInButton_scopeUris:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    iput-object v3, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private zzar(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v2, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(Landroid/content/Context;II[Lcom/google/android/gms/common/api/Scope;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SignInButton"

    const-string/jumbo v1, "Sign in button not found, using placeholder instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v2, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/SignInButton;->zza(Landroid/content/Context;II[Lcom/google/android/gms/common/api/Scope;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafV:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafV:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setColorScheme(I)V
    .locals 2
    .param p1, "colorScheme"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zzafV:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafU:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 2
    .param p1, "scopes"    # [Lcom/google/android/gms/common/api/Scope;

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "buttonSize"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public setStyle(II)V
    .locals 1
    .param p1, "buttonSize"    # I
    .param p2, "colorScheme"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method public setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .param p1, "buttonSize"    # I
    .param p2, "colorScheme"    # I
    .param p3, "scopes"    # [Lcom/google/android/gms/common/api/Scope;

    .prologue
    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->zzafT:[Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/SignInButton;->zzar(Landroid/content/Context;)V

    return-void
.end method
