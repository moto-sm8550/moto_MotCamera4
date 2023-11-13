.class public final synthetic Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    sget v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p2, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, p3}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "calbrtnvalue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "keytype"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "keytag"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p2, p3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x43a16f25 -> :sswitch_2
        -0x308c19e7 -> :sswitch_1
        0x328360d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
