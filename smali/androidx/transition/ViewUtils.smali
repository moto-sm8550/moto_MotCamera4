.class public final Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final IMPL:Landroidx/transition/ViewUtilsApi29;

.field public static final TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/transition/ViewUtilsApi29;

    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi29;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 2
    new-instance v0, Landroidx/transition/ViewUtils$1;

    invoke-direct {v0}, Landroidx/transition/ViewUtils$1;-><init>()V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    .line 3
    new-instance v0, Landroidx/transition/ViewUtils$2;

    const-class v1, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroidx/transition/ViewUtils$2;-><init>(Ljava/lang/Class;)V

    return-void
.end method
