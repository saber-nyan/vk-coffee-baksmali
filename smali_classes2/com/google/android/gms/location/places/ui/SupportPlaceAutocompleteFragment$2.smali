.class Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRo:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$2;->zzaRo:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$2;->zzaRo:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
