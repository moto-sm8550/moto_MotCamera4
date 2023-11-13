.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final selectionListener:Lcom/google/android/material/timepicker/TimePickerView$1;

.field public final toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Lcom/google/android/material/timepicker/TimePickerView$1;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d008d

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a026b

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    const p1, 0x7f0a026f

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 6
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 7
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a0274

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const v0, 0x7f0a0271

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    const v1, 0x7f0a026c

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    .line 11
    new-instance v1, Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    new-instance p0, Lcom/google/android/material/timepicker/TimePickerView$4;

    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/TimePickerView$4;-><init>(Landroid/view/GestureDetector;)V

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p0, 0xc

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const v1, 0x7f0a036d

    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 p0, 0xa

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "android.view.View"

    .line 20
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    :cond_0
    return-void
.end method

.method public final updateToggleConstraints()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    const v1, 0x7f0a026a

    .line 6
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown constraint"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :pswitch_0
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 10
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 11
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    goto :goto_1

    .line 12
    :pswitch_1
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 13
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 14
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 15
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    goto :goto_1

    .line 16
    :pswitch_2
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 17
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 18
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 19
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    goto :goto_1

    .line 20
    :pswitch_3
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 21
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 22
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 23
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 24
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    goto :goto_1

    .line 25
    :pswitch_4
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 26
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 27
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 28
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    goto :goto_1

    .line 29
    :pswitch_5
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 30
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 31
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 32
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    goto :goto_1

    .line 33
    :pswitch_6
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 34
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 35
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 36
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    goto :goto_1

    .line 37
    :pswitch_7
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 38
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 39
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 40
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
