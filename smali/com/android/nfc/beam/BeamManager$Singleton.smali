.class final Lcom/android/nfc/beam/BeamManager$Singleton;
.super Ljava/lang/Object;
.source "BeamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/nfc/beam/BeamManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/nfc/beam/BeamManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/beam/BeamManager;-><init>(Lcom/android/nfc/beam/BeamManager$1;)V

    sput-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
