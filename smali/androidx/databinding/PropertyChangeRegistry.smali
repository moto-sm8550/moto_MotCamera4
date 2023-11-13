.class public final Landroidx/databinding/PropertyChangeRegistry;
.super Landroidx/databinding/CallbackRegistry;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry<",
        "Landroidx/databinding/Observable$OnPropertyChangedCallback;",
        "Landroidx/databinding/Observable;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final NOTIFIER_CALLBACK:Landroidx/databinding/PropertyChangeRegistry$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/Observable$OnPropertyChangedCallback;",
            "Landroidx/databinding/Observable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/PropertyChangeRegistry$1;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry$1;-><init>()V

    sput-object v0, Landroidx/databinding/PropertyChangeRegistry;->NOTIFIER_CALLBACK:Landroidx/databinding/PropertyChangeRegistry$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry;-><init>()V

    return-void
.end method
