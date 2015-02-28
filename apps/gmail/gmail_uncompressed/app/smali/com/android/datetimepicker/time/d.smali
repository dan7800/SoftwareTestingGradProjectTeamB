.class final Lcom/android/datetimepicker/time/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field final synthetic KF:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/android/datetimepicker/time/d;->KF:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->c(Lcom/android/datetimepicker/time/RadialPickerLayout;)Z

    .line 615
    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->d(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/d;->KF:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;IZ)I

    move-result v0

    .line 617
    iget-object v1, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I

    .line 618
    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->e(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/e;

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->KE:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->gz()I

    .line 619
    return-void
.end method
