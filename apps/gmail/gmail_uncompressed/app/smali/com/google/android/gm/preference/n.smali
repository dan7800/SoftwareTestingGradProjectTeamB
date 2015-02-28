.class final Lcom/google/android/gm/preference/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic bbT:Lcom/google/android/gm/preference/IntegerPickerPreference;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/IntegerPickerPreference;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gm/preference/n;->bbT:Lcom/google/android/gm/preference/IntegerPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gm/preference/n;->bbT:Lcom/google/android/gm/preference/IntegerPickerPreference;

    invoke-static {v0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->a(Lcom/google/android/gm/preference/IntegerPickerPreference;)V

    .line 70
    return-void
.end method
